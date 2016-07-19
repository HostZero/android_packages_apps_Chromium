.class Lorg/chromium/chrome/browser/preferences/HomepageEditor$2;
.super Ljava/lang/Object;
.source "HomepageEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    # getter for: Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->access$000(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    # getter for: Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageUrlEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->access$100(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->fixupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->setPrefHomepageCustomUri(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    # getter for: Lorg/chromium/chrome/browser/preferences/HomepageEditor;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->access$000(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->setPrefHomepageUseDefaultUri(Z)V

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 89
    return-void
.end method
