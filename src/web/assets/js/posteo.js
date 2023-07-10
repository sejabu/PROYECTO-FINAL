const { createApp } = Vue;

// Crea una instancia de la aplicación Vue
createApp({
  data() {
    /* El código define una instancia de la aplicación Vue. Aquí se especifican los datos utilizados por la aplicación, incluyendo la lista de productos, la URL del backend, indicadores de error y carga, así como los atributos para almacenar los valores del formulario de producto.
     */
    return {
      posteos: [], // Almacena los productos obtenidos del backend
      url:'http://localhost:5000/posteos', // URL local
      // url: "https://elgallo.pythonanywhere.com/posteos", // URL del backend donde se encuentran los productos
      error: false,
      cargando: true,
      // Atributos para el almacenar los valores del formulario
      id: 0,
      titulo: "",
      post: "",
      votos: 0,
      imagen: "",
      pagina: 0, // Seteo página inicial
      elementosPorPagina: 3, // Cantidad de posteos por página
    };
  },
  methods: {
    fetchData(url) {
      /**El método fetchData realiza una solicitud HTTP utilizando la función fetch a la URL especificada. Luego, los datos de respuesta se convierten en formato JSON y se asignan al arreglo productos. Además, se actualiza la variable cargando para indicar que la carga de productos ha finalizado. En caso de producirse un error, se muestra en la consola y se establece la variable error en true.
       *
       */
      fetch(url)
        .then((response) => response.json()) // Convierte la respuesta en formato JSON
        .then((data) => {
          // Asigna los datos de los productos obtenidos al arreglo 'posteos'
          data.reverse();
          this.posteos = data;
          this.cargando = false;
        })
        .catch((err) => {
          console.error(err);
          this.error = true;
        });
    },
    
    mostrarSiguiente() {
        this.pagina++;
    },
    mostrarAnterior() {
        this.pagina--;
    },
    votar(posteo) {
        let post = {
          titulo: posteo.titulo,
          post: posteo.post,
          votos: posteo.votos,
          imagen: posteo.imagen,
        };
        post.votos +=1;
        console.log(post.votos); // Controlo que se incremente correctamente le valor antes de guardar en la BD
        var options = {
          body: JSON.stringify(post),
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          redirect: "follow",
        };
        fetch(this.url+'/'+ posteo.id, options)
          .then(function () {
            location.reload();
          })
          .catch((err) => {
            console.error(err);
            alert("Error al actualizar.");
          });
      },

    eliminar(posteo) {
      /* El método eliminar toma un parámetro producto y construye la URL para eliminar ese producto en particular. Luego, realiza una solicitud fetch utilizando el método HTTP DELETE a la URL especificada. Después de eliminar el producto, la página se recarga para reflejar los cambios.
       */
      // Construye la URL para eliminar el producto especificado
      const url = this.url + "/" + posteo;
      var options = {
        method: "DELETE", // Establece el método HTTP como DELETE
      };
      fetch(url, options)
        .then((res) => res.text()) // Convierte la respuesta en texto (or res.json())
        .then((res) => {
          location.reload(); // Recarga la página actual después de eliminar el producto
        });
    },
    grabar() {
      /* El método grabar se encarga de guardar los datos de un nuevo posteo en el servidor. Primero, se crea un objeto posteo con los datos ingresados en el formulario. Luego, se configuran las opciones para la solicitud fetch, incluyendo el cuerpo de la solicitud como una cadena JSON, el método HTTP como POST y el encabezado Content-Type como application/json. Después, se realiza la solicitud fetch a la URL especificada utilizando las opciones establecidas. Si la operación se realiza con éxito, se muestra un mensaje de éxito y se redirige al usuario a la página principal. Si ocurre algún error, se muestra un mensaje de error.
       */
      // Crear un objeto 'posteo' con los datos del formulario
      let posteo = {
        titulo: this.titulo,
        post: this.post,
        votos: this.votos,
        imagen: this.imagen,
      };

      // Configurar las opciones para la solicitud fetch
      var options = {
        body: JSON.stringify(posteo), // Convertir el objeto a una cadena JSON
        method: "POST", // Establecer el método HTTP como POST
        headers: { "Content-Type": "application/json" },
        redirect: "follow",
      };

      // Realizar una solicitud fetch para guardar el producto en el servidor
      fetch(this.url, options)
        .then(function () {
          alert("Registro grabado!");
          window.location.href = "./index.html"; // Redirigir a la página principal
        })
        .catch((err) => {
          console.error(err);
          alert("Error al Grabar.");
        });
    },
  },
  created() {
    this.fetchData(this.url);
  },
}).mount("#app");
