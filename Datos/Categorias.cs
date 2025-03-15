using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Datos
{
    public class Categorias
    {
        private readonly string _dbConnectionString;

        public Categorias()
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
                    string query = "SELECT * FROM categorias";
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
                throw new Exception("Error al obtener las categorías", ex);
            }
            return dt;
        }

        public void Insert(string nombre)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO categorias (nombre) VALUES (@nombre)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@nombre", nombre);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al insertar la categoría", ex);
            }
        }

        public void Update(int id, string nombre)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "UPDATE categorias SET nombre = @nombre WHERE id = @id";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.Parameters.AddWithValue("@nombre", nombre);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al actualizar la categoría", ex);
            }
        }

        public void Delete(int id)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_dbConnectionString))
                {
                    conn.Open();
                    string query = "DELETE FROM categorias WHERE id = @id";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al eliminar la categoría", ex);
            }
        }
    }
}
