using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Datos
{
    public class Cuentas
    {
        private readonly string _dbConnectionString;

        public Cuentas()
        {
            _dbConnectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        }

        public DataTable Get()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "SELECT cu.*, ca.nombre as Categoria FROM cuentas cu INNER JOIN categorias ca ON cu.idcategoria = ca.id";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            adapter.Fill(dt);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener las cuentas", ex);
            }
            return dt;
        }

        public void Insert(string nombre, string usuario, string password, int idCategoria)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO cuentas (nombre, usuario, password, idcategoria) VALUES (@nombre, @usuario, @password, @idcategoria)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@nombre", nombre);
                        cmd.Parameters.AddWithValue("@usuario", usuario);
                        cmd.Parameters.AddWithValue("@password", password);
                        cmd.Parameters.AddWithValue("@idcategoria", idCategoria);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al insertar la cuenta", ex);
            }
        }

        public void Update(int id, string nombre, string usuario, string password, int idCategoria)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "UPDATE cuentas SET nombre = @nombre, usuario = @usuario, password = @password, idcategoria = @idcategoria WHERE id = @id";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.Parameters.AddWithValue("@nombre", nombre);
                        cmd.Parameters.AddWithValue("@usuario", usuario);
                        cmd.Parameters.AddWithValue("@password", password);
                        cmd.Parameters.AddWithValue("@idcategoria", idCategoria);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al actualizar la cuenta", ex);
            }
        }

        public void Delete(int id)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "DELETE FROM cuentas WHERE id = @id";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al eliminar la cuenta", ex);
            }
        }
    }
}
