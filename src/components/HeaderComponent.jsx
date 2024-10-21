import { Container, Row, Col } from "react-bootstrap";

function HeaderComponent() {
  return (
    <>
      <div
        style={{
          background:
            "radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%)",
          height: "70vh",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          color: "white",
          textAlign: "center",
          position: "relative",
          top: 0,
          width: "100%",
        }}
      >
        <Container>
          <Row className="justify-content-center align-items-center">
            <Col>
              <h1 style={{ fontSize: "4rem", fontWeight: "bold" }}>
                Hello, I am Nargis
              </h1>
              <p style={{ fontSize: "1.5rem", marginTop: "10px" }}>
                Web Developer and Web Designer based in Finland
              </p>
            </Col>
          </Row>
        </Container>
      </div>
    </>
  );
}

export default HeaderComponent;
