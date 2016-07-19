.class Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$2;
.super Ljava/lang/Object;
.source "AutofillProfileEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 317
    return-void
.end method
