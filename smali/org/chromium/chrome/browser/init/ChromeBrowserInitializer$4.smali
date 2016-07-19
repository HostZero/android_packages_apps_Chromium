.class Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;
.super Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;
.source "ChromeBrowserInitializer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

.field final synthetic val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

.field final synthetic val$initQueue:Ljava/util/LinkedList;

.field final synthetic val$isAsync:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;Lorg/chromium/chrome/browser/init/BrowserParts;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;->val$isAsync:Z

    iput-object p3, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;->val$initQueue:Ljava/util/LinkedList;

    iput-object p4, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;->val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

    invoke-direct {p0, p1, p3, p2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;Ljava/util/LinkedList;Z)V

    return-void
.end method


# virtual methods
.method public initFunction()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;->val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/BrowserParts;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;->val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/BrowserParts;->initializeCompositor()V

    goto :goto_0
.end method
