.class Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$3;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$3;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$3;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    # invokes: Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->ensureNativeChromeDestroyedOnUIThread()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->access$200(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    .line 1153
    return-void
.end method
