.class public Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;
.super Ljava/lang/Object;
.source "PrefServiceBridge.java"


# instance fields
.field private final mApplicationVersion:Ljava/lang/String;

.field private final mOSVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->mApplicationVersion:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->mOSVersion:Ljava/lang/String;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$1;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->mApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;->mOSVersion:Ljava/lang/String;

    return-object v0
.end method
