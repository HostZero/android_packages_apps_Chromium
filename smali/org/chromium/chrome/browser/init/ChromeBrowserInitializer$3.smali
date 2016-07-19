.class Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;
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
    .line 254
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;->val$isAsync:Z

    iput-object p3, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;->val$initQueue:Ljava/util/LinkedList;

    iput-object p4, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;->val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

    invoke-direct {p0, p1, p3, p2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;Ljava/util/LinkedList;Z)V

    return-void
.end method


# virtual methods
.method public initFunction()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;->val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/BrowserParts;->maybePreconnect()V

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    # invokes: Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->onStartNativeInitialization()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->access$200(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)V

    .line 267
    return-void
.end method
