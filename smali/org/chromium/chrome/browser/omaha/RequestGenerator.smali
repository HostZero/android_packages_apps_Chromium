.class public abstract Lorg/chromium/chrome/browser/omaha/RequestGenerator;
.super Ljava/lang/Object;
.source "RequestGenerator.java"


# static fields
.field public static final INSTALL_AGE_IMMEDIATELY_AFTER_INSTALLING:I = -0x1


# instance fields
.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->mApplicationContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static installAge(JJZ)J
    .locals 6

    .prologue
    .line 41
    if-eqz p4, :cond_0

    .line 42
    const-wide/16 v0, -0x1

    .line 44
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    sub-long v2, p0, p2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected appendExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public generateXML(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/chrome/browser/omaha/RequestData;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 55
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 58
    :try_start_0
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 59
    const-string/jumbo v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    const/4 v2, 0x0

    const-string/jumbo v3, "request"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const/4 v2, 0x0

    const-string/jumbo v3, "protocol"

    const-string/jumbo v4, "3.0"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    const-string/jumbo v4, "Android-1.0.0.0"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    const/4 v2, 0x0

    const-string/jumbo v3, "ismachine"

    const-string/jumbo v4, "1"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    const/4 v2, 0x0

    const-string/jumbo v3, "requestid"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lorg/chromium/chrome/browser/omaha/RequestData;->getRequestID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const/4 v2, 0x0

    const-string/jumbo v3, "sessionid"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    const/4 v2, 0x0

    const-string/jumbo v3, "installsource"

    invoke-virtual {p5}, Lorg/chromium/chrome/browser/omaha/RequestData;->getInstallSource()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string/jumbo v2, "request"

    invoke-virtual {p0, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->appendExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 72
    const/4 v2, 0x0

    const-string/jumbo v3, "os"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const/4 v2, 0x0

    const-string/jumbo v3, "platform"

    const-string/jumbo v4, "android"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const/4 v2, 0x0

    const-string/jumbo v3, "arch"

    const-string/jumbo v4, "arm"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const/4 v2, 0x0

    const-string/jumbo v3, "os"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const/4 v2, 0x0

    const-string/jumbo v3, "app"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const/4 v2, 0x0

    const-string/jumbo v3, "brand"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->getBrand()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const/4 v2, 0x0

    const-string/jumbo v3, "client"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->getClient()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const/4 v2, 0x0

    const-string/jumbo v3, "appid"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {v0, v2, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    const/4 v2, 0x0

    const-string/jumbo v3, "nextversion"

    const-string/jumbo v4, ""

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const/4 v2, 0x0

    const-string/jumbo v3, "lang"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const/4 v2, 0x0

    const-string/jumbo v3, "installage"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const/4 v2, 0x0

    const-string/jumbo v3, "ap"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->getAdditionalParameters()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string/jumbo v2, "app"

    invoke-virtual {p0, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->appendExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 90
    invoke-virtual {p5}, Lorg/chromium/chrome/browser/omaha/RequestData;->isSendInstallEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const/4 v2, 0x0

    const-string/jumbo v3, "event"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const/4 v2, 0x0

    const-string/jumbo v3, "eventtype"

    const-string/jumbo v4, "2"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const/4 v2, 0x0

    const-string/jumbo v3, "eventresult"

    const-string/jumbo v4, "1"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const/4 v2, 0x0

    const-string/jumbo v3, "event"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    :goto_0
    const/4 v2, 0x0

    const-string/jumbo v3, "app"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const/4 v2, 0x0

    const-string/jumbo v3, "request"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v3, "updatecheck"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const/4 v2, 0x0

    const-string/jumbo v3, "updatecheck"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const/4 v2, 0x0

    const-string/jumbo v3, "ping"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const/4 v2, 0x0

    const-string/jumbo v3, "active"

    const-string/jumbo v4, "1"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const/4 v2, 0x0

    const-string/jumbo v3, "ping"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Caught an IOException creating the XML: "

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :catch_1
    move-exception v0

    .line 114
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Caught an IllegalArgumentException creating the XML: "

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :catch_2
    move-exception v0

    .line 117
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Caught an IllegalStateException creating the XML: "

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAdditionalParameters()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/base/BuildInfo;->getPackageLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/StringSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/chrome/browser/omaha/StringSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lorg/chromium/chrome/browser/omaha/StringSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAppId()Ljava/lang/String;
.end method

.method protected abstract getBrand()Ljava/lang/String;
.end method

.method protected abstract getClient()Ljava/lang/String;
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getServerUrl()Ljava/lang/String;
.end method
