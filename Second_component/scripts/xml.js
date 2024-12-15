function createXMLDocument() {
    const documentImplementation = document.implementation;
    const doc = documentImplementation.createDocument(null, "BusStations");

    // Set attributes for the root element
    const root = doc.documentElement;
    root.setAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
    root.setAttribute("xsi:noNamespaceSchemaLocation", "bus_station.xsd");

    // Create "BusStation" element
    const busStation = doc.createElement("BusStation");

    const name = doc.createElement("name");
    name.textContent = "Централна Автогара София";
    busStation.appendChild(name);

    const location = doc.createElement("location");
    location.textContent = "София, България";
    busStation.appendChild(location);

    const capacity = doc.createElement("capacity");
    capacity.textContent = "50";
    busStation.appendChild(capacity);

    const manager = doc.createElement("manager");
    manager.textContent = "Иван Петров";
    busStation.appendChild(manager);

    const contactInfo = doc.createElement("contactInfo");
    contactInfo.textContent = "+359123456789";
    busStation.appendChild(contactInfo);

    const openingHours = doc.createElement("openingHours");
    openingHours.textContent = "06:00 - 22:00";
    busStation.appendChild(openingHours);

    // Add Routes
    const routes = doc.createElement("Routes");

    const route = doc.createElement("Route");
    route.setAttribute("id", "R001");
    route.setAttribute("destination", "Пловдив");
    route.setAttribute("frequency", "Hourly");

    const stops = doc.createElement("Stops");

    const stop = doc.createElement("Stop");
    stop.setAttribute("name", "София Централна");
    stop.setAttribute("type", "автогара");

    const stopDetails = doc.createElement("StopDetails");
    stopDetails.textContent = "Начална точка на маршрута";
    stop.appendChild(stopDetails);

    const estimatedTime = doc.createElement("EstimatedTime");
    estimatedTime.textContent = "20:00:00";
    stop.appendChild(estimatedTime);

    stops.appendChild(stop);
    route.appendChild(stops);

    const routeManager = doc.createElement("RouteManager");
    routeManager.textContent = "Георги Иванов";
    route.appendChild(routeManager);

    routes.appendChild(route);
    busStation.appendChild(routes);

    // Add the station to the root
    root.appendChild(busStation);

    return doc;
}
