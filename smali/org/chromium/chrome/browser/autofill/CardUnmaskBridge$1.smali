.class Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge$1;
.super Ljava/lang/Object;
.source "CardUnmaskBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge$1;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->dismissed()V

    .line 37
    return-void
.end method
