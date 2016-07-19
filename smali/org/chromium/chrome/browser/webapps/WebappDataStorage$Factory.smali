.class public Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;
.super Ljava/lang/Object;
.source "WebappDataStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/chrome/browser/webapps/WebappDataStorage;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-direct {v0, p1, p2}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
