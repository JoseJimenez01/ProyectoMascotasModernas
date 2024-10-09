using System.Data;

//[Route("registrar/[controller]")]
[ApiController]
public class UsuarioController : ControllerBase
{
    private readonly string connectionString = "Server=DESKTOP-NVUTANU\\SQLEXPRESS; Initial Catalog=MascotasModernas; user id= sa; pwd= 123.elSQLs.;";

    [HttpPost]
    [Route("registrar/Usuario")]
    public IActionResult RegistrarUsuario([FromBody] Usuario usuario)
    {
        // using (SqlConnection connection = new SqlConnection(connectionString))
        // {
        //     SqlCommand command = new SqlCommand("NombreDelStoredProcedure", connection);
        //     command.CommandType = CommandType.StoredProcedure;
        //     command.Parameters.AddWithValue("@Nombre", request.Nombre);

        //     connection.Open();
        //     command.ExecuteNonQuery();
        // }
        Console.WriteLine("Entro al RegistrarUsuario");

        return Ok(new { mensaje = "Stored Procedure ejecutado con éxito" });
    }
}