import { urlencoded } from "express";
import util from "i/lib/util";
import { s3 } from "../s3.js";
import { prisma } from "../prisma.js";

export class ArchivosService {
    //data = {productoID¿d:}, contentType: `image/png', ext:'png', filename: 'mayonesa.png'}
    static async crearArchivo(data) {

        //primero validar si el producto existe 
        await prisma.producto.findUnique({ where: { id: data.productoId }, rejectOnNotFound: true, });


        //validar si ese producto no tiene imagen

        //si tiene imagen indicar que ya existe una imagen previa
        //return indicando tal cosa

        // actualizar el producto en su columna imagen agregar el valor de la propiedad key


        const path = `archivos/prodductos/${data.productoId}`;

        const url = s3.getSignedUrl("putObject", {
            key: `${path}/${data.filename}.${data.ext}`,
            ContentType: data.ContentType,
            Bucket: process.env.AWS_BUCKET,
            Expires: +process.env.AWS_SIGNED_EXPIRES_IN,
        });
        return url;
    }
}