import React, { useState } from "react";
import FullPageLoader from "./full_page_loader";

const UseFullPageLoader = () => {
  const [loading, setLoading] = useState(false);

  return [
    loading ? <FullPageLoader /> : null,
    () => setLoading(true), // Show loader
    () => setLoading(false), // Hide loader
  ];
};

export default UseFullPageLoader;
