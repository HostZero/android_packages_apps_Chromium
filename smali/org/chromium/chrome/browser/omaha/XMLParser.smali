.class public Lorg/chromium/chrome/browser/omaha/XMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLParser.java"


# instance fields
.field private final mRootNode:Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

.field private final mTagStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 47
    new-instance v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mRootNode:Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    .line 48
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mRootNode:Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 54
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mRootNode:Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v1, "XML was malformed."

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Hit IOException"

    invoke-direct {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Hit ParserConfigurationException"

    invoke-direct {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 61
    :catch_2
    move-exception v0

    .line 62
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Hit SAXParseException"

    invoke-direct {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 64
    :catch_3
    move-exception v0

    .line 65
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Hit SAXException"

    invoke-direct {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tried closing empty stack with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Tried closing "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public getRootNode()Lorg/chromium/chrome/browser/omaha/XMLParser$Node;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mRootNode:Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Tag stack is empty when it shouldn\'t be."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    invoke-direct {v1, p3}, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/XMLParser;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 89
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    iget-object v4, v1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method
