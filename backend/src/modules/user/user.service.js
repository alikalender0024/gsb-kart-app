import prisma from "../../config/prisma.js";

import bcrypt from "bcryptjs";

// Yeni kullanıcı oluşturma
export async function createUser(data) {
    try {
        const hashedPassword = await bcrypt.hash(data.password, 10);

        return prisma.user.create({
            data: {
                email: data.email,
                password: hashedPassword,
                firstName: data.firstName,
                lastName: data.lastName
            },
        });
    } catch (error) {
        console.error("SERVICE ERROR:", error);
        throw error;
    }
}


// Email ile kullanıcı bul (login için kullanılıyor)
export async function getUserByEmail(email) {
    return prisma.user.findUnique({
        where: { email },
    });
}

// Tüm kullanıcıları listele
export async function getAllUsers() {
    return prisma.user.findMany();
}

// Kullanıcı güncelle
export async function updateUser(id, data) {
    return prisma.user.update({
        where: { id },
        data,
    });
}

// Kullanıcı silme
export async function deleteUser(id) {
    return prisma.user.delete({
        where: { id },
    });
}
