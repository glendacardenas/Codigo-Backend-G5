import { Router } from "express";
import { crear } from "../controllers/producto.controller.js";

export const productoRouter = Router();

productoRouter.route("/producto").post(validarUsuario, crear);