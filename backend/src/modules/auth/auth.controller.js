import * as authService from "./auth.service.js";

export async function login(req, res) {
    try {
        const { email, password } = req.body;

        if (!email || !password) {
            return res.status(400).json({ message: "Email ve şifre zorunludur." });
        }

        const result = await authService.login({ email, password });

        return res.status(200).json({
            message: "Giriş başarılı",
            ...result
        });
    } catch (err) {
        console.error("Login error:", err);
        return res.status(401).json({ message: err.message });
    }
}
