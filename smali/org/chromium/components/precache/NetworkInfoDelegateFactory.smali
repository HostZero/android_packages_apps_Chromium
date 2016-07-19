.class public Lorg/chromium/components/precache/NetworkInfoDelegateFactory;
.super Ljava/lang/Object;
.source "NetworkInfoDelegateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getNetworkInfoDelegate(Landroid/content/Context;)Lorg/chromium/components/precache/NetworkInfoDelegate;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lorg/chromium/components/precache/NetworkInfoDelegate;

    invoke-direct {v0, p1}, Lorg/chromium/components/precache/NetworkInfoDelegate;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
