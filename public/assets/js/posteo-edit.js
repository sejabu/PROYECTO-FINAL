console.log(location.search); // Imprime en la consola los argumentos pasados a este formulario 
var id = location.search.substr(4); // Obtiene el valor del argumento 'id' de la URL
console.log(id);
const { createApp } = Vue;
createApp({
  data() {
    return {
      // Inicializa las variables
      id: 0,
      titulo: "",
      post: "",
      votos: 0,
      imagen: "",
//      url: "http://localhost:5000/posteos/" + id,
      url: "https://elgallo.pythonanywhere.com/posteos/" + id,
    };
  },
  methods: {
    fetchData(url) {
      /* Este código define un método llamado fetchData(url) que realiza una solicitud a través de fetch a una URL especificada y procesa la respuesta.
      Este código utiliza la función fetch para realizar una solicitud HTTP a una URL específica. Luego, encadena una serie de promesas utilizando los métodos then y catch.
      En el primer then, se convierte la respuesta en formato JSON mediante response.json(). Luego, en el segundo then, se accede a los datos obtenidos y se asignan a las propiedades de la instancia de Vue, como id, titulo, post, votos e imagen (url).
      Si se produce algún error durante el proceso, el código captura la excepción en el bloque catch y registra el error en la consola, además de establecer la propiedad error en true.
      En resumen, este código realiza una solicitud a una URL, espera la respuesta en formato JSON y actualiza los datos de la instancia de Vue con los valores obtenidos de la respuesta.
      */
      fetch(url)
        .then((response) => response.json())
        .then((data) => {
          console.log(data);
          this.id = data.id;
          this.titulo = data.titulo;
          this.post = data.post;
          this.votos = data.votos;
          this.imagen = data.imagen;
        })
        .catch((err) => {
          console.error(err);
          this.error = true;
        });
    },
    modificar() {
      /* Este código define la función modificar(). En esta función, se crea un objeto posteo que contiene las propiedades titulo, post, votos e imagen obtenidas de la instancia de Vue. Luego se define un objeto options que especifica las opciones para la solicitud HTTP.
      A continuación, se utiliza la función fetch para realizar una solicitud HTTP tipo PUT a la URL this.url utilizando las opciones definidas en options. Si la solicitud se realiza con éxito, se redirige a la página "./panel-admin.html". Si ocurre algún error durante el proceso, se captura la excepción en el bloque catch, se registra el error en la consola y se muestra una alerta indicando que ha ocurrido un error al actualizar.
       */
      let posteo = {
        titulo: this.titulo,
        post: this.post,
        votos: this.votos,
        imagen: this.imagen,
      };
      var options = {
        body: JSON.stringify(posteo),
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        redirect: "follow",
      };
      fetch(this.url, options)
        .then(function () {
          alert("Registro actualizado!");
          window.location.href = "./panel-admin.html";
        })
        .catch((err) => {
          console.error(err);
          alert("Error al actualizar.");
        });
    },
  },
  created() {
    /* Este código define el bloque created() en el cual se llama a la función fetchData(this.url) al crear la instancia de Vue. La función fetchData() se encarga de realizar una solicitud HTTP a la URL especificada en this.url y obtener los datos necesarios para la aplicación.
     */
    this.fetchData(this.url);
  },
  /* Posteriormente, se utiliza el método mount("#app") para montar la instancia de Vue en el elemento HTML con el id "app". Esto permite que la instancia de Vue controle y renderice el contenido dentro de ese elemento HTML.
  */
}).mount("#app");
