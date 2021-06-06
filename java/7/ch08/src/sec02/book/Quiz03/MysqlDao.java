package sec02.book.Quiz03;

public class MysqlDao implements DataAccessObject {
	@Override
	public void select() {
		System.out.println("MYSQL 검색");
	}

	@Override
	public void insert() {
		System.out.println("MYSQL 삽입");

	}

	@Override
	public void update() {
		System.out.println("MYSQL 수정");

	}

	@Override
	public void delete() {
		System.out.println("MYSQL 삭제");

	}
}
