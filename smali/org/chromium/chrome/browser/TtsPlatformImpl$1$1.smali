.class Lorg/chromium/chrome/browser/TtsPlatformImpl$1$1;
.super Ljava/lang/Object;
.source "TtsPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/TtsPlatformImpl$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/TtsPlatformImpl$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$1$1;->this$1:Lorg/chromium/chrome/browser/TtsPlatformImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$1$1;->this$1:Lorg/chromium/chrome/browser/TtsPlatformImpl$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/TtsPlatformImpl$1;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    # invokes: Lorg/chromium/chrome/browser/TtsPlatformImpl;->initialize()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->access$100(Lorg/chromium/chrome/browser/TtsPlatformImpl;)V

    .line 82
    return-void
.end method
