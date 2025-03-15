using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Datos
{
    public class Notas
    {
        private readonly string _dbConnectionString;

        public Notas()
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
                    string query = "SELECT * FROM notas";
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
                throw new Exception("Error al obtener las notas", ex);
            }
            return dt;
        }

        public void Insert(string titulo, string descripcion, DateTime fecha, DateTime hora)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO notas (titulo, descripcion, fecha, hora) VALUES (@titulo, @descripcion, @fecha, @hora)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@titulo", titulo);
                        cmd.Parameters.AddWithValue("@descripcion", descripcion);
                        cmd.Parameters.AddWithValue("@fecha", fecha);
                        cmd.Parameters.AddWithValue("@hora", hora);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al insertar la nota", ex);
            }
        }

        public void Delete(int id)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "DELETE FROM notas WHERE id = @id";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al eliminar la nota", ex);
            }
        }
    }
}
