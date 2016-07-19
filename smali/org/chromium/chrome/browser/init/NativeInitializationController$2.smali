.class Lorg/chromium/chrome/browser/init/NativeInitializationController$2;
.super Ljava/lang/Object;
.source "NativeInitializationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/NativeInitializationController;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$2;->this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$2;->this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    # invokes: Lorg/chromium/chrome/browser/init/NativeInitializationController;->onNativeLibraryLoaded()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->access$300(Lorg/chromium/chrome/browser/init/NativeInitializationController;)V

    .line 137
    return-void
.end method
