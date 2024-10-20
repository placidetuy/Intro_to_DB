import mysql.connector

def create_database():
    try:
        # Establish the connection
        connection = mysql.connector.connect(
            host='localhost',
            user='placide',
            password='MalkaBienfaits@2924'
        )
        
        cursor = connection.cursor()
        
        # Create database
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        print(f"Error while connecting to MySQL: {err}")

    finally:
        # Close the connection
        if 'connection' in locals() and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

if __name__ == "__main__":
    create_database()

