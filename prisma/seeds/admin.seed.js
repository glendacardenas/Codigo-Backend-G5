
export default async (prisma) => {
    await prisma.usuario.upsert({
        create: {
            nombre: 'Glenda',
            correo: 'gyacardenas@yahoo.com.mx',
            password: "123456",
            tipoUsuario: "ADMIN",

        },
        update: {},
        where: {
            correo: "gycardenas@yahoo.com.mx"
        },
    });
};