.class public Lorg/chromium/chrome/browser/autofill/AutofillLogger;
.super Ljava/lang/Object;
.source "AutofillLogger.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sLogger:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

.field private static sLoggerForTest:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lorg/chromium/chrome/browser/autofill/AutofillLogger;->sLogger:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

    .line 48
    sput-object v0, Lorg/chromium/chrome/browser/autofill/AutofillLogger;->sLoggerForTest:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static didFillField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-object v0, Lorg/chromium/chrome/browser/autofill/AutofillLogger;->sLogger:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lorg/chromium/chrome/browser/autofill/AutofillLogger;->sLogger:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

    new-instance v1, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;

    invoke-direct {v1, p0, p1, v2}, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/autofill/AutofillLogger$1;)V

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;->didFillField(Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;)V

    .line 66
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/autofill/AutofillLogger;->sLoggerForTest:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lorg/chromium/chrome/browser/autofill/AutofillLogger;->sLoggerForTest:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

    new-instance v1, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;

    invoke-direct {v1, p0, p1, v2}, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/autofill/AutofillLogger$1;)V

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;->didFillField(Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;)V

    .line 69
    :cond_1
    return-void
.end method

.method public static setLogger(Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;)V
    .locals 0

    .prologue
    .line 52
    sput-object p0, Lorg/chromium/chrome/browser/autofill/AutofillLogger;->sLogger:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

    .line 53
    return-void
.end method

.method public static setLoggerForTesting(Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;)V
    .locals 0

    .prologue
    .line 57
    sput-object p0, Lorg/chromium/chrome/browser/autofill/AutofillLogger;->sLoggerForTest:Lorg/chromium/chrome/browser/autofill/AutofillLogger$Logger;

    .line 58
    return-void
.end method
