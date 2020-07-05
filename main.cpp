#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickItem>
#include <QDebug>
#include <QQmlContext>

void dumpObject(int indent, QObject * object)
{
    QObjectList children = object->children();
    foreach(QObject * child, children)
    {
        QString indentStr;
        for(int i=0; i<indent; i++)
            indentStr += "  ";

        QString name = qmlContext(child)? qmlContext(child)->nameForObject(child) : "";
        qDebug() << indentStr << child->metaObject()->className() << " - " << name;
        dumpObject(indent+1, child);
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    //auto objects = engine.rootObjects();
    //dumpObject(0, objects[0]->findChild<QObject *>("leftbar"));

    //findChild<QObject*>("helloText");
    //textItem->setProperty("text", QVariant("Test text"));

    return app.exec();
}
