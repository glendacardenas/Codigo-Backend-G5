import { hashSync } from "bcrypt";

export default async (prisma) => {

    const password = hashSync('Welcome123!', 10)

    await prisma.usuario.upsert({
        create: {
            nombre: 'Glenda',
            correo: 'gyacardenas@yahoo.com.mx',
            password,
            tipoUsuario: "ADMIN",

        },
        update: {
            password,
        },
        where: {
            //solamente se pueden declarar las columnas que sean unicas (unique) o las pk
            correo: "gycardenas@yahoo.com.mx"
        },
    });
};