package sec02.book.Quiz03;

public class MysqlDao implements DataAccessObject {
	@Override
	public void select() {
		System.out.println("MYSQL �˻�");
	}

	@Override
	public void insert() {
		System.out.println("MYSQL ����");

	}

	@Override
	public void update() {
		System.out.println("MYSQL ����");

	}

	@Override
	public void delete() {
		System.out.println("MYSQL ����");

	}
}
