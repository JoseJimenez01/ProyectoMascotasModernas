

public partial class Usuario
{
    public int Id { get; set; }

    //[Required(ErrorMessage = "El espacio no puede quedar en blanco")]
    public string Username { get; set; } = null!;

    //[Required(ErrorMessage = "El espacio no puede quedar en blanco")]
    //[MaxLength(64, ErrorMessage = "La contraseña debe tener un máximo de 64 caracteres")]
    public string Correo { get; set; } = null!;
    
    public string Password { get; set; } = null!;

}
