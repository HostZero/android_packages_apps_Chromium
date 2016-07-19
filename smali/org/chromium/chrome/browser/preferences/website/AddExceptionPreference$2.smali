.class Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$2;
.super Ljava/lang/Object;
.source "AddExceptionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$2;->this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$2;->val$input:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->showKeyboard(Landroid/view/View;)V

    .line 125
    return-void
.end method
