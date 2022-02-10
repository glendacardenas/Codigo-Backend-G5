import validator from "validator";
export function archivoDto({ productoId, contentType, ext, filename }) {
    //hacer las validaciones
    //para la ext solo vamos a permitir jpg,png, jpeg
    //contenttype solo vamos a permitir image/jpg image/jpeg

    if (!validator.isNumeric(productoId.toString())) {
        throw Error('El productoId debe ser numerico');
    }

    console.log(contentType);
    if (contentType !== 'image/png' &&
        contentType !== 'image/jpg' &&
        contentType !== 'image/jpeg') {
        throw Error("El contentType solo puede ser image/png, image/jpgsd, image/jpeg");
    }


    if (
        !validator.equals(ext, "jpg") ||
        !validator.equals(ext, "png") ||
        !validator.equals(ext, "jpeg")
    ) {
        throw Error("La ext solo puede ser :jpg,png, jpeg");
    }

    //hacer lo mismo con las extensiones


    if (validator.isEmpty(filename)) {
        throw Error("El filename no puede estar vacio");
    }
    return { productoId, contentType, ext, filename };
}
