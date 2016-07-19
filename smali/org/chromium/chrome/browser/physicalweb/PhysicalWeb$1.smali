.class final Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb$1;
.super Ljava/lang/Object;
.source "PhysicalWeb.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->clearUrls()V

    .line 131
    return-void
.end method
