// export const login = async ()=>{...}
import { AuthService } from "../services/auth.service.js";
import { loginDto } from '../services/dtos/request/login.dto.js';

export async function login(req, res) {
    //const { correo, password } = req.body;
    try {
        //forma simplificada en la cual en un solo paso hacemos todo
        //const result = await AuthService.login (loginDto)

        const { correo, password } = loginDto(req.body);
        //luego le pasaria esa informacion validada previamente al servicio para que ya se encarge de hacer la busqueda correspondiente del usuario

        const result = await AuthService.login({ correo, password });

        res.status(200).json(result);
    } catch (error) {
        res.status(400).json({
            error: error.message,
            message: "Error al hacer el login",
        });
    }
}