.class Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge$1;
.super Ljava/lang/Object;
.source "AutofillPopupBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->dismissed()V

    .line 47
    return-void
.end method
