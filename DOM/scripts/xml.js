function createXMLDocument() {
    const documentImplementation = document.implementation;
    const doc = documentImplementation.createDocument(null, "BusStations", null);

    function createElementWithText(name, text) {
        const element = doc.createElement(name);
        element.textContent = text;
        return element;
    }

    const busStationsElement = doc.documentElement;
    busStationsElement.setAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
    busStationsElement.setAttribute("xsi:noNamespaceSchemaLocation", "../../XML_Schema/bus_station.xsd");

    const busStationElement = doc.createElement("BusStation");
    busStationElement.appendChild(createElementWithText("name", "Автогара Русе"));
    busStationElement.appendChild(createElementWithText("location", "Русе, България"));
    busStationElement.appendChild(createElementWithText("capacity", "20"));
    busStationElement.appendChild(createElementWithText("manager", "Ангел Иванов"));
    busStationElement.appendChild(createElementWithText("contactInfo", "+359112244556"));
    busStationElement.appendChild(createElementWithText("openingHours", "07:00 - 20:00"));

    const servicesElement = doc.createElement("services");
    servicesElement.appendChild(createElementWithText("service", "Магазин"));
    busStationElement.appendChild(servicesElement);

    const routesElement = doc.createElement("Routes");
    const routeElement = doc.createElement("Route");
    routeElement.setAttribute("id", "R005");
    routeElement.setAttribute("destination", "Силистра");
    routeElement.setAttribute("frequency", "Daily");

    const stopsElement = doc.createElement("Stops");

    const stop1 = doc.createElement("Stop");
    stop1.setAttribute("name", "Русе Централна");
    stop1.setAttribute("type", "автогара");
    stop1.appendChild(createElementWithText("StopDetails", "Начална точка"));
    stop1.appendChild(createElementWithText("EstimatedTime", "08:00:00"));

    const stop2 = doc.createElement("Stop");
    stop2.setAttribute("name", "Тутракан");
    stop2.setAttribute("type", "спирка");
    stop2.appendChild(createElementWithText("StopDetails", "Междинна спирка"));
    stop2.appendChild(createElementWithText("EstimatedTime", "09:30:00"));

    const stop3 = doc.createElement("Stop");
    stop3.setAttribute("name", "Силистра Централна");
    stop3.setAttribute("type", "автогара");
    stop3.appendChild(createElementWithText("StopDetails", "Крайна точка"));
    stop3.appendChild(createElementWithText("EstimatedTime", "10:30:00"));

    stopsElement.appendChild(stop1);
    stopsElement.appendChild(stop2);
    stopsElement.appendChild(stop3);

    routeElement.appendChild(stopsElement);
    routeElement.appendChild(createElementWithText("RouteManager", "Михаил Георгиев"));
    routesElement.appendChild(routeElement);

    busStationElement.appendChild(routesElement);
    busStationsElement.appendChild(busStationElement);

    return doc;
}
