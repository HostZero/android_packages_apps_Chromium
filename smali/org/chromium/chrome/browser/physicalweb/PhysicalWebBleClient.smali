.class public Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;
.super Ljava/lang/Object;
.source "PhysicalWebBleClient.java"


# static fields
.field private static sInstance:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->sInstance:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lorg/chromium/chrome/browser/ChromeApplication;)Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->sInstance:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->createPhysicalWebBleClient()Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->sInstance:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    .line 33
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;->sInstance:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    return-object v0
.end method


# virtual methods
.method backgroundSubscribe()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method backgroundUnsubscribe()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method foregroundSubscribe(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method foregroundUnsubscribe()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
