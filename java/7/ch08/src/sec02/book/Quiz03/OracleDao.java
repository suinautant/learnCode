package sec02.book.Quiz03;

public class OracleDao implements DataAccessObject {
	@Override
	public void select() {
		System.out.println("ORACLE 검색");
	}

	@Override
	public void insert() {
		System.out.println("ORACLE 삽입");

	}

	@Override
	public void update() {
		System.out.println("ORACLE 수정");

	}

	@Override
	public void delete() {
		System.out.println("ORACLE 삭제");

	}
}
