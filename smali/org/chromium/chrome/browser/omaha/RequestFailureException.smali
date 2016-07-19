.class public Lorg/chromium/chrome/browser/omaha/RequestFailureException;
.super Ljava/lang/Exception;
.source "RequestFailureException.java"


# static fields
.field public static final ERROR_MALFORMED_XML:I = 0x1

.field public static final ERROR_PARSE_APP:I = 0x5

.field public static final ERROR_PARSE_DAYSTART:I = 0x4

.field public static final ERROR_PARSE_EVENT:I = 0x7

.field public static final ERROR_PARSE_MANIFEST:I = 0xa

.field public static final ERROR_PARSE_PING:I = 0x6

.field public static final ERROR_PARSE_RESPONSE:I = 0x3

.field public static final ERROR_PARSE_ROOT:I = 0x2

.field public static final ERROR_PARSE_UPDATECHECK:I = 0x9

.field public static final ERROR_PARSE_URLS:I = 0x8

.field public static final ERROR_UNDEFINED:I


# instance fields
.field public errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/omaha/RequestFailureException;->errorCode:I

    .line 31
    iput p2, p0, Lorg/chromium/chrome/browser/omaha/RequestFailureException;->errorCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/omaha/RequestFailureException;->errorCode:I

    .line 40
    iput p3, p0, Lorg/chromium/chrome/browser/omaha/RequestFailureException;->errorCode:I

    .line 41
    return-void
.end method
