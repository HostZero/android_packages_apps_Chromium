.class Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$2;
.super Ljava/lang/Object;
.source "ChromiumSyncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

.field final synthetic val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$2;->this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    iput-object p2, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$2;->val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$2;->val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;->onSuccess(Z)V

    .line 140
    return-void
.end method
