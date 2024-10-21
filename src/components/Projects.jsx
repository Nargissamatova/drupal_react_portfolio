import React, { useEffect, useState } from "react";
import { fetchContent } from "../services/api";
import { Button, Container } from "react-bootstrap";

const Projects = () => {
  const [content, setContent] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetchContent("node/projects")
      .then((data) => {
        console.log("Fetched data:", data); // Log the fetched data
        setContent(data.data[0]); // Access the first item in the data array
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching content:", error); // Log any errors
        setError(error);
        setLoading(false);
      });
  }, []);

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error loading content: {error.message}</div>;
  }

  return (
    <>
      <Container
        style={{
          backgroundColor: "#181C14",
          padding: "3em",
          marginTop: "5em",
          color: "white",
        }}
      >
        {content && content.attributes && content.attributes.body ? (
          <div
            dangerouslySetInnerHTML={{
              __html: content.attributes.body.value,
            }}
          />
        ) : (
          <div>No content available</div>
        )}
        <Button
          variant="success"
          href="https://github.com/Nargissamatova?tab=repositories"
          target="_blank"
          style={{ padding: "10px 20px", fontSize: "16px", marginTop: "3em" }}
        >
          View My GitHub
        </Button>
      </Container>
    </>
  );
};

export default Projects;
