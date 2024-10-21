import { useEffect, useState } from "react";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Navbar from "react-bootstrap/Navbar";
import NavDropdown from "react-bootstrap/NavDropdown";

function Navbarmenu() {
  const [isScrolled, setIsScrolled] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 50); // Change this value as needed
    };

    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  return (
    <Navbar
      expand="lg"
      fixed="top"
      className={`bg-${isScrolled ? "light" : "transparent"} transition`}
      style={{
        zIndex: 1000,
      }}
    >
      <Container>
        <Navbar.Brand href="/" className="text-dark">
          MyPortfolio
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="me-auto">
            <Nav.Link href="/" className="text-dark">
              Home
            </Nav.Link>
            <Nav.Link href="/about" className="text-dark">
              About
            </Nav.Link>
            <Nav.Link href="/projects" className="text-dark">
              Projects
            </Nav.Link>
            <NavDropdown title="Contacts" id="basic-nav-dropdown">
              <NavDropdown.Item href="https://github.com/Nargissamatova">
                GitHub
              </NavDropdown.Item>
              <NavDropdown.Item href="#action/3.2">LinkedIn</NavDropdown.Item>
              <NavDropdown.Item href="#action/3.3">Email</NavDropdown.Item>
            </NavDropdown>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default Navbarmenu;
