import * as userService from "./user.service.js";

// Yeni kullanıcı oluşturma
export async function createUser(req, res) {
    try {
        const { email, password, firstName, lastName } = req.body;

        if (!email || !password || !firstName) {
            return res.status(400).json({
                message: "Email, şifre ve firstName zorunludur.",
            });
        }

        const existingUser = await userService.getUserByEmail(email);

        if (existingUser) {
            return res.status(409).json({
                message: "Bu email ile kayıtlı bir kullanıcı zaten var.",
            });
        }

        const user = await userService.createUser({
            email,
            password,
            firstName,
            lastName,
        });

        return res.status(201).json({
            message: "Kullanıcı başarıyla oluşturuldu.",
            user,
        });
    } catch (error) {
        console.error("createUser error:", error);
        return res.status(500).json({ error: "Sunucu hatası" });
    }
}



// Tüm kullanıcıları listele
export async function getAllUsers(req, res) {
    try {
        const users = await userService.getAllUsers();
        return res.status(200).json(users);
    } catch (error) {
        console.error("getAllUsers error:", error);
        return res.status(500).json({ error: "Sunucu hatası" });
    }
}

// Kullanıcıyı ID ile getir
export async function getUserById(req, res) {
    try {
        const { id } = req.params;
        const user = await userService.getUserById(parseInt(id));

        if (!user) {
            return res.status(404).json({ message: "Kullanıcı bulunamadı" });
        }

        return res.status(200).json(user);
    } catch (error) {
        console.error("getUserById error:", error);
        return res.status(500).json({ error: "Sunucu hatası" });
    }
}

// Kullanıcı güncelle
export async function updateUser(req, res) {
    try {
        const { id } = req.params;
        const data = req.body;

        const updatedUser = await userService.updateUser(parseInt(id), data);

        return res.status(200).json({
            message: "Kullanıcı güncellendi.",
            updatedUser,
        });
    } catch (error) {
        console.error("updateUser error:", error);
        return res.status(500).json({ error: "Sunucu hatası" });
    }
}

// Kullanıcı sil
export async function deleteUser(req, res) {
    try {
        const { id } = req.params;

        await userService.deleteUser(parseInt(id));

        return res.status(200).json({
            message: "Kullanıcı silindi.",
        });
    } catch (error) {
        console.error("deleteUser error:", error);
        return res.status(500).json({ error: "Sunucu hatası" });
    }
}
