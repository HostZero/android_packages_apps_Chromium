.class Lorg/chromium/chrome/browser/widget/EmptyAlertEditText$1;
.super Ljava/lang/Object;
.source "EmptyAlertEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText$1;->this$0:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText$1;->this$0:Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/EmptyAlertEditText;->validate()V

    .line 48
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
