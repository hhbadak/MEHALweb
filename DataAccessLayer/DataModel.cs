using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DataModel
    {
        SqlConnection con; SqlCommand cmd;

        public DataModel()
        {
            con = new SqlConnection(ConnectionStrings.conStr);
            cmd = con.CreateCommand();
        }

        #region MEMBER TRANSACTIONS

        public List<Complaints> listUserComplaint()
        {
            try
            {
                List<Complaints> comp = new List<Complaints>();
                cmd.CommandText = "SELECT c.ID, u.UserName, compSj.Subject, c.Date \r\nFROM Complaints AS c\r\nJOIN Users AS u ON u.ID = c.User_ID\r\nJOIN ComplaintSubjects AS compSj ON c.C_Subjects_ID = compSj.ID\r\nWHERE c.Status = 1 AND c.C_Area_ID = 1";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Complaints cmp = new Complaints();
                    cmp.ID = reader.GetInt32(0);
                    cmp.userName = reader.GetString(1);
                    cmp.subjects = reader.GetString(2);
                    cmp.date = reader.GetDateTime(3);
                    cmp.dateStr = reader.GetDateTime(3).ToShortDateString();
                    comp.Add(cmp);
                }
                return comp;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public List<Complaints> listSharingComplaint()
        {
            try
            {
                List<Complaints> comp = new List<Complaints>();
                cmd.CommandText = "SELECT cmp.ID, u.UserName, s.Content, c.Subject, cmp.Date FROM Complaints AS cmp\r\nJOIN Users AS u ON u.ID = cmp.User_ID\r\nJOIN Sharing AS s ON s.ID = cmp.Sharing_ID\r\nJOIN ComplaintSubjects AS c ON c.ID = cmp.C_Subjects_ID WHERE cmp.Status = 1 AND cmp.C_Area_ID = 3";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Complaints cmp = new Complaints();
                    cmp.ID = reader.GetInt32(0);
                    cmp.userName = reader.GetString(1);
                    cmp.sharing = reader.GetString(2);
                    cmp.subjects = reader.GetString(3);
                    cmp.date = reader.GetDateTime(4);
                    cmp.dateStr = reader.GetDateTime(4).ToShortDateString();
                    comp.Add(cmp);
                }
                return comp;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public List<Complaints> listCommentComplaint()
        {
            try
            {
                List<Complaints> comp = new List<Complaints>();
                cmd.CommandText = "SELECT cmp.ID, u.UserName, comm.Comment, c.Subject, cmp.Date FROM Complaints AS cmp\r\nJOIN Users AS u ON u.ID = cmp.User_ID\r\nJOIN Comments AS comm ON comm.ID = cmp.Comment_ID\r\nJOIN ComplaintSubjects AS c ON c.ID = cmp.C_Subjects_ID WHERE cmp.Status = 1 AND cmp.C_Area_ID = 2";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Complaints cmp = new Complaints();
                    cmp.ID = reader.GetInt32(0);
                    cmp.userName = reader.GetString(1);
                    cmp.comment = reader.GetString(2);
                    cmp.subjects = reader.GetString(3);
                    cmp.date = reader.GetDateTime(4);
                    cmp.dateStr = reader.GetDateTime(4).ToShortDateString();
                    comp.Add(cmp);
                }
                return comp;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public bool accountRestriction(int id)
        {
            try
            {
                cmd.CommandText = "UPDATE Sharing SET Status = 0 WHERE User_ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.CommandText = "UPDATE Comments SET Status = 0 WHERE User_ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("id", id);
                cmd.ExecuteNonQuery();
                cmd.CommandText = "UPDATE Chats SET Status = 0 WHERE OutGoingChat = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("id", id);
                cmd.ExecuteNonQuery();
                cmd.CommandText = "UPDATE Sharing SET Status = 0 WHERE User_ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("id", id);
                cmd.ExecuteNonQuery();
                cmd.CommandText = "UPDATE FriendShip SET Status = 0 WHERE OutGoingRequest = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("id", id);
                cmd.ExecuteNonQuery();
                cmd.CommandText = "UPDATE Users SET Status = 0 WHERE ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("id", id);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally { con.Close(); }
        }
        public bool deletePost(int id)
        {
            try
            {
                cmd.CommandText = "DELETE Comments WHERE Sharing_ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.CommandText = "DELETE Sharing Where ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally { con.Close(); }
        }
        public bool deleteComment(int id)
        {
            try
            {
                cmd.CommandText = "DELETE Comments WHERE ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally { con.Close(); }
        }
        
        #endregion

    }
}
