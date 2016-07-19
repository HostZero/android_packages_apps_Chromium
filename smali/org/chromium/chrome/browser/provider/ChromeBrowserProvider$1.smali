.class Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$1;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$1;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onSuccess(Z)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$1;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    # invokes: Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->ensureNativeSideInitialized()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->access$000(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    .line 254
    return-void
.end method
