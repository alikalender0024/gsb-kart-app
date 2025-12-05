import jwt from "jsonwebtoken";
import bcrypt from "bcryptjs";
import prisma from "../../config/prisma.js";

export async function login({ email, password }) {
    const user = await prisma.user.findUnique({
        where: { email },
    });

    if (!user) {
        throw new Error("Kullanıcı bulunamadı");
    }

    const isPasswordValid = await bcrypt.compare(password, user.password);

    if (!isPasswordValid) {
        throw new Error("Şifre hatalı");
    }

    // JWT üret
    const token = jwt.sign(
        { userId: user.id, email: user.email },
        process.env.JWT_SECRET,
        { expiresIn: "1h" }
    );

    return {
        token,
        user: {
            id: user.id,
            email: user.email,
            firstName: user.firstName,
            lastName: user.lastName,
        }
    };
}
