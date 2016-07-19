.class Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge$1;
.super Ljava/lang/Object;
.source "PasswordGenerationPopupBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge$1;->this$0:Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge$1;->this$0:Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PasswordGenerationPopupBridge;->onDismiss()V

    .line 62
    return-void
.end method
