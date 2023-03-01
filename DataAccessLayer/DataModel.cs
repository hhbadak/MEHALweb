using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.CompilerServices;
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

        #region COMPLAINT METHODS
        public Complaints bringUserComplaint(int id)
        {
            try
            {
                cmd.CommandText = "SELECT c.ID, u.UserName, tUser.UserName, compSj.Subject, c.Date\r\nFROM Complaints AS c\r\nJOIN Users AS u ON u.ID = c.User_ID\r\nJOIN Users AS tUser ON tUser.ID = c.TheComplainingUser\r\nJOIN ComplaintSubjects AS compSj ON c.C_Subjects_ID = compSj.ID\r\nWHERE c.Status = 1 AND c.C_Area_ID = 1 AND c.ID= @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Complaints comp = new Complaints();
                while (reader.Read())
                {
                    comp.ID = reader.GetInt32(0);
                    comp.userName = reader.GetString(1);
                    comp.theComplainingUser = reader.GetString(2);
                    comp.subjects = reader.GetString(3);
                    comp.date = reader.GetDateTime(4);
                    comp.dateStr = reader.GetDateTime(4).ToShortDateString();
                }
                return comp;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public Complaints bringCommentComplaint(int id)
        {
            try
            {
                cmd.CommandText = "SELECT c.ID, u.UserName, comp.Comment, tUser.UserName, compSj.Subject, c.Date, c.Time\r\nFROM Complaints AS c\r\nJOIN Users AS u ON u.ID = c.User_ID\r\nJOIN Comments AS comp ON comp.ID = c.Comment_ID\r\nJOIN Users AS tUser ON tUser.ID = c.TheComplainingUser\r\nJOIN ComplaintSubjects AS compSj ON c.C_Subjects_ID = compSj.ID\r\nWHERE c.Status = 1 AND c.C_Area_ID = 2 AND c.ID= @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Complaints comp = new Complaints();
                while (reader.Read())
                {
                    comp.ID = reader.GetInt32(0);
                    comp.userName = reader.GetString(1);
                    comp.comment = reader.GetString(2);
                    comp.theComplainingUser = reader.GetString(3);
                    comp.subjects = reader.GetString(4);
                    comp.date = reader.GetDateTime(5);
                    comp.dateStr = reader.GetDateTime(5).ToShortDateString();
                    comp.time = reader.GetDateTime(6);
                    comp.timeStr = reader.GetDateTime(6).ToShortDateString();
                }
                return comp;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public Complaints bringSharingComplaint(int id)
        {
            try
            {
                cmd.CommandText = "SELECT c.ID, u.UserName, comp.Comment, tUser.UserName, compSj.Subject, c.Date, c.Time\r\nFROM Complaints AS c\r\nJOIN Users AS u ON u.ID = c.User_ID\r\nJOIN Comments AS comp ON comp.ID = c.Comment_ID\r\nJOIN Users AS tUser ON tUser.ID = c.TheComplainingUser\r\nJOIN ComplaintSubjects AS compSj ON c.C_Subjects_ID = compSj.ID\r\nWHERE c.Status = 1 AND c.C_Area_ID = 3 AND c.ID= @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                Complaints comp = new Complaints();
                while (reader.Read())
                {
                    comp.ID = reader.GetInt32(0);
                    comp.userName = reader.GetString(1);
                    comp.comment = reader.GetString(2);
                    comp.theComplainingUser = reader.GetString(3);
                    comp.subjects = reader.GetString(4);
                    comp.date = reader.GetDateTime(5);
                    comp.dateStr = reader.GetDateTime(5).ToShortDateString();
                    comp.time = reader.GetDateTime(6);
                    comp.timeStr = reader.GetDateTime(6).ToShortDateString();
                }
                return comp;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        #endregion

        #region LIST METHODS
        public List<Complaints> listUserComplaint()
        {
            try
            {
                List<Complaints> comp = new List<Complaints>();
                cmd.CommandText = "SELECT c.ID, u.UserName, tUser.UserName, compSj.Subject, c.Date\r\nFROM Complaints AS c\r\nJOIN Users AS u ON u.ID = c.User_ID\r\nJOIN Users AS tUser ON tUser.ID = c.TheComplainingUser\r\nJOIN ComplaintSubjects AS compSj ON c.C_Subjects_ID = compSj.ID\r\nWHERE c.Status = 1 AND c.C_Area_ID = 1";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Complaints cmp = new Complaints();
                    cmp.ID = reader.GetInt32(0);
                    cmp.userName = reader.GetString(1);
                    cmp.theComplainingUser = reader.GetString(2);
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
        public List<Complaints> listSharingComplaint()
        {
            try
            {
                List<Complaints> comp = new List<Complaints>();
                cmd.CommandText = "SELECT cmp.ID, u.UserName, s.Content, tUser.UserName, c.Subject, cmp.Date FROM Complaints AS cmp\r\nJOIN Users AS u ON u.ID = cmp.User_ID\r\nJOIN Users AS tUser ON tUser.ID = cmp.TheComplainingUser\r\nJOIN Sharing AS s ON s.ID = cmp.Sharing_ID\r\nJOIN ComplaintSubjects AS c ON c.ID = cmp.C_Subjects_ID WHERE cmp.Status = 1 AND cmp.C_Area_ID = 3";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Complaints cmp = new Complaints();
                    cmp.ID = reader.GetInt32(0);
                    cmp.userName = reader.GetString(1);
                    cmp.sharing = reader.GetString(2);
                    cmp.theComplainingUser = reader.GetString(3);
                    cmp.subjects = reader.GetString(4);
                    cmp.date = reader.GetDateTime(5);
                    cmp.dateStr = reader.GetDateTime(5).ToShortDateString();
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
                cmd.CommandText = "SELECT cmp.ID, u.UserName, comm.Comment, tUser.UserName, c.Subject, cmp.Date FROM Complaints AS cmp\r\nJOIN Users AS u ON u.ID = cmp.User_ID\r\nJOIN Users AS tUser ON tUser.ID = cmp.TheComplainingUser\r\nJOIN Comments AS comm ON comm.ID = cmp.Comment_ID\r\nJOIN ComplaintSubjects AS c ON c.ID = cmp.C_Subjects_ID WHERE cmp.Status = 1 AND cmp.C_Area_ID = 2";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Complaints cmp = new Complaints();
                    cmp.ID = reader.GetInt32(0);
                    cmp.userName = reader.GetString(1);
                    cmp.comment = reader.GetString(2);
                    cmp.theComplainingUser = reader.GetString(3);
                    cmp.subjects = reader.GetString(4);
                    cmp.date = reader.GetDateTime(5);
                    cmp.dateStr = reader.GetDateTime(5).ToShortDateString();
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
        #endregion

        #region DELETION METHODS
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
                cmd.CommandText = "UPDATE Complaints SET Status = 0 WHERE ID = @id";
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
                cmd.CommandText = "UPDATE Comments SET Status = 0 WHERE Sharing_ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.CommandText = "UPDATE Sharing SET Status = 0 Where ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                cmd.CommandText = "UPDATE Complaints SET Status = 0 WHERE ID = @id";
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
                cmd.CommandText = "UPDATE Comments Set Status = 0 WHERE ID = @id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.CommandText = "UPDATE Complaints SET Status = 0 WHERE ID = @id";
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
        #endregion

        #region MEMBER TRANSACTIONS
        public Users loginAdmin(string username, string password)
        {
            try
            {
                cmd.CommandText = "SELECT COUNT(*) FROM Users WHERE MemberStatus_ID = 1 AND UserName = @uName AND Password = @password";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@uName", username);
                cmd.Parameters.AddWithValue("password", password);
                con.Open();
                int number = Convert.ToInt32(cmd.ExecuteScalar());

                if (number > 0)
                {
                    cmd.CommandText = "SELECT u.ID, u.Name, u.Surname, u.UserName, u.EMail, u.Password, u.DateOfBirth, u.Images, m.Status, u.DateOfRegistration, u.Status FROM Users AS u\r\nJOIN MemberStatus AS m ON m.ID = u.MemberStatus_ID\r\nWHERE u.UserName = @uName AND u.Password = @password";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@uName", username);
                    cmd.Parameters.AddWithValue("password", password);
                    SqlDataReader reader = cmd.ExecuteReader();
                    Users u = new Users();
                    while (reader.Read())
                    {
                        u.ID = reader.GetInt32(0);
                        u.name = reader.GetString(1);
                        u.surname = reader.GetString(2);
                        u.userName = reader.GetString(3);
                        u.eMail = reader.GetString(4);
                        u.password = reader.GetString(5);
                        u.dateOfBirth = reader.GetDateTime(6);
                        u.dateBirthStr = reader.GetDateTime(6).ToShortDateString();
                        u.image = !reader.IsDBNull(7) ? reader.GetString(4) : "none.png";
                        u.memberStatus = reader.GetString(8);
                        u.dateOfregistration = reader.GetDateTime(9);
                        u.dateRegistrationStr = reader.GetDateTime(9).ToShortDateString();
                        u.status = reader.GetBoolean(10);
                    }
                    return u;
                }
                else
                {
                    return null;
                }
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        public bool memberRegistration(Users user)
        {
            try
            {
                cmd.CommandText = "INSERT INTO Users(Name, Surname, UserName, EMail, Password, DateOfBirth, MemberStatus_ID, DateOfRegistration, Status) VALUES(@name, @sName, @userName, @mail, @password, @birthDay, 2, @registrationDate, 1)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@name", user.name);
                cmd.Parameters.AddWithValue("@sName", user.surname);
                cmd.Parameters.AddWithValue("@userName", user.userName);
                cmd.Parameters.AddWithValue("@mail", user.eMail);
                cmd.Parameters.AddWithValue("@password", user.password);
                cmd.Parameters.AddWithValue("@birthDay", user.dateOfBirth);
                cmd.Parameters.AddWithValue("@registrationDate", user.dateOfregistration);
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
