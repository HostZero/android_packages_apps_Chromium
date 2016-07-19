.class public Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;
.super Ljava/lang/Object;
.source "LogcatExtractionCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field protected static final BEGIN_MICRODUMP:Ljava/lang/String; = "-----BEGIN BREAKPAD MICRODUMP-----"

.field private static final CHROME_NAMESPACE:[Ljava/lang/String;

.field protected static final CONSOLE_ELISION:Ljava/lang/String; = "[ELIDED:CONSOLE(0)] ELIDED CONSOLE MESSAGE"

.field private static final CONSOLE_MSG:Ljava/util/regex/Pattern;

.field private static final DOMAIN_NAME:Ljava/util/regex/Pattern;

.field protected static final EMAIL_ELISION:Ljava/lang/String; = "XXX@EMAIL.ELIDED"

.field protected static final END_MICRODUMP:Ljava/lang/String; = "-----END BREAKPAD MICRODUMP-----"

.field private static final IP_ADDRESS:Ljava/util/regex/Pattern;

.field protected static final IP_ELISION:Ljava/lang/String; = "1.2.3.4"

.field protected static final LOGCAT_SIZE:I = 0x100

.field private static final MAC_ADDRESS:Ljava/util/regex/Pattern;

.field protected static final MAC_ELISION:Ljava/lang/String; = "01:23:45:67:89:AB"

.field private static final MINIDUMP_EXTENSION:Ljava/util/regex/Pattern;

.field private static final SYSTEM_NAMESPACE:[Ljava/lang/String;

.field protected static final URL_ELISION:Ljava/lang/String; = "HTTP://WEBADDRESS.ELIDED"

.field private static final WEB_URL:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMinidumpFilenames:[Ljava/lang/String;

.field private final mRedirectIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    const-string/jumbo v0, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->IP_ADDRESS:Ljava/util/regex/Pattern;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(?:\\b|^)((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")(?:\\:\\d{1,5})?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(\\/(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(?:\\b|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->WEB_URL:Ljava/util/regex/Pattern;

    .line 106
    const-string/jumbo v0, "([0-9a-fA-F]{2}[-:]+){5}[0-9a-fA-F]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->MAC_ADDRESS:Ljava/util/regex/Pattern;

    .line 109
    const-string/jumbo v0, "\\[\\w*:CONSOLE.*\\].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->CONSOLE_MSG:Ljava/util/regex/Pattern;

    .line 112
    const-string/jumbo v0, "\\.dmp"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->MINIDUMP_EXTENSION:Ljava/util/regex/Pattern;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "org.chromium."

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google."

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->CHROME_NAMESPACE:[Ljava/lang/String;

    .line 118
    const/16 v0, 0x33

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.accessibilityservice"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.accounts"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.animation"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "android.annotation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "android.appwidget"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "android.bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "android.content"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "android.database"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "android.databinding"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "android.drm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "android.gesture"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "android.graphics"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "android.hardware"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "android.inputmethodservice"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "android.location"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "android.media"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "android.mtp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "android.net"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "android.nfc"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "android.opengl"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "android.os"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "android.preference"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "android.print"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "android.printservice"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "android.provider"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "android.renderscript"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "android.sax"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "android.security"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "android.service"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "android.speech"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "android.support"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "android.system"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "android.telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "android.telephony"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "android.test"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "android.text"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "android.transition"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "android.util"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "android.view"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "android.webkit"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "android.widget"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "com.android."

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "dalvik."

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "java."

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "javax."

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "org.apache."

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "org.json."

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "org.w3c.dom."

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "org.xml."

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "org.xmlpull."

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->SYSTEM_NAMESPACE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mContext:Landroid/content/Context;

    .line 146
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mMinidumpFilenames:[Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mRedirectIntent:Landroid/content/Intent;

    .line 148
    return-void
.end method

.method private static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 203
    .line 206
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 207
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 209
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 211
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 212
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 215
    :goto_1
    :try_start_3
    const-string/jumbo v3, "LogcatExtraction"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 218
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 223
    :cond_1
    :goto_2
    return-void

    .line 218
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_3
    throw v0

    .line 217
    :catchall_2
    move-exception v0

    move-object v1, v2

    .line 218
    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 220
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v0

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v0

    .line 217
    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_6
    move-exception v0

    goto :goto_3

    .line 214
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method protected static elideConsole(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    sget-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->CONSOLE_MSG:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "[ELIDED:CONSOLE(0)] ELIDED CONSOLE MESSAGE"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static elideEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "XXX@EMAIL.ELIDED"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static elideIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "1.2.3.4"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static elideMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    sget-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->MAC_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "01:23:45:67:89:AB"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static elideUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    sget-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 362
    const/4 v0, 0x0

    .line 363
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 365
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 366
    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-static {v4}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->likelyToBeChromeNamespace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->likelyToBeSystemNamespace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    const-string/jumbo v1, "HTTP://WEBADDRESS.ELIDED"

    invoke-virtual {v2, v3, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    add-int/lit8 v0, v3, 0x18

    .line 370
    sget-object v1, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static extractLogcatFromReader(Ljava/io/BufferedReader;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 278
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->extractLogcatFromReaderInternal(Ljava/io/BufferedReader;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static extractLogcatFromReaderInternal(Ljava/io/BufferedReader;I)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 283
    .line 284
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move v0, v1

    .line 286
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p1, :cond_4

    .line 287
    const-string/jumbo v4, "-----BEGIN BREAKPAD MICRODUMP-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const-string/jumbo v4, "-----END BREAKPAD MICRODUMP-----"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    if-nez v0, :cond_2

    .line 295
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 297
    goto :goto_0

    .line 300
    :cond_3
    if-nez v0, :cond_0

    .line 301
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_4
    return-object v2
.end method

.method private getElidedLogcat()Ljava/io/File;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->getLogcat()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->processLogcat(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->writeLogcat(Ljava/util/List;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getLogcatInternal()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v1, "logcat -d"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 244
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v2

    .line 245
    :goto_0
    if-nez v2, :cond_1

    .line 246
    const/16 v0, 0x100

    :try_start_1
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->extractLogcatFromReader(Ljava/io/BufferedReader;I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 248
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 250
    :catch_0
    move-exception v4

    const-wide/16 v4, 0x1f4

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    throw v0

    .line 253
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Logcat failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string/jumbo v2, "LogcatExtraction"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    .line 260
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static likelyToBeChromeNamespace(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 378
    sget-object v2, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->CHROME_NAMESPACE:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 379
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    const/4 v0, 0x1

    .line 383
    :cond_0
    return v0

    .line 378
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static likelyToBeSystemNamespace(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 387
    sget-object v2, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->SYSTEM_NAMESPACE:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 388
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    const/4 v0, 0x1

    .line 392
    :cond_0
    return v0

    .line 387
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static move(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string/jumbo v0, "LogcatExtraction"

    const-string/jumbo v1, "Fail to rename logcat file"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_0
    return-void
.end method

.method protected static processLogcat(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->elideEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->elideUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->elideIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->elideMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->elideConsole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_0
    return-object v1
.end method

.method private processMinidump(Ljava/io/File;Ljava/lang/String;Lorg/chromium/chrome/browser/crash/CrashFileManager;Z)V
    .locals 4

    .prologue
    .line 176
    sget-object v0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->MINIDUMP_EXTENSION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ".logcat"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p3, v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->createNewTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 183
    if-eqz p4, :cond_0

    .line 184
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->move(Ljava/io/File;Ljava/io/File;)V

    .line 185
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mRedirectIntent:Landroid/content/Intent;

    invoke-static {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;->createMinidumpPreparationIntent(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 193
    return-void

    .line 188
    :cond_0
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 189
    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/crash/MinidumpPreparationService;->createMinidumpPreparationIntent(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private writeLogcat(Ljava/util/List;)Ljava/io/File;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Lorg/chromium/chrome/browser/crash/CrashFileManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;-><init>(Ljava/io/File;)V

    .line 310
    const-string/jumbo v1, "logcat.txt"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->createNewTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 311
    const/4 v2, 0x0

    .line 313
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-object v3

    .line 319
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    const-string/jumbo v0, "LogcatExtraction"

    const-string/jumbo v3, "Trying to extract logcat for minidump"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->getElidedLogcat()Ljava/io/File;

    move-result-object v4

    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mMinidumpFilenames:[Ljava/lang/String;

    array-length v5, v0

    .line 160
    new-instance v6, Lorg/chromium/chrome/browser/crash/CrashFileManager;

    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/chromium/chrome/browser/crash/CrashFileManager;-><init>(Ljava/io/File;)V

    move v3, v2

    .line 161
    :goto_0
    if-ge v3, v5, :cond_1

    .line 163
    const-string/jumbo v0, "LogcatExtraction"

    const-string/jumbo v7, "Output crash dump:"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const-string/jumbo v0, "LogcatExtraction"

    iget-object v7, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mMinidumpFilenames:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Lorg/chromium/chrome/browser/crash/CrashFileManager;->getCrashFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->mMinidumpFilenames:[Ljava/lang/String;

    aget-object v7, v0, v3

    add-int/lit8 v0, v5, -0x1

    if-ne v3, v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, v4, v7, v6, v0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->processMinidump(Ljava/io/File;Ljava/lang/String;Lorg/chromium/chrome/browser/crash/CrashFileManager;Z)V

    .line 161
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 165
    goto :goto_1

    .line 167
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_2
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :goto_3
    const-string/jumbo v1, "LogcatExtraction"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 168
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getLogcat()Ljava/util/List;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lorg/chromium/chrome/browser/crash/LogcatExtractionCallable;->getLogcatInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
