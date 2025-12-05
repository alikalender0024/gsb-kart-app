import express from "express";
import userRouter from "./modules/user/user.router.js";
import authRoutes from "./modules/auth/auth.routes.js";
import { authMiddleware } from "./modules/auth/auth.middleware.js";


const app = express();

app.use(express.json());

// User Routes
app.use("/api/users", userRouter);

// Public routes
app.use("/api/auth", authRoutes);

// Protected test route
app.get("/api/protected", authMiddleware, (req, res) => {
    res.json({
        message: "Korumalı endpoint'e eriştiniz!",
        user: req.user
    });
});

export default app;


