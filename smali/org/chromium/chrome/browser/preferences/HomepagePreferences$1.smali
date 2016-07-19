.class Lorg/chromium/chrome/browser/preferences/HomepagePreferences$1;
.super Ljava/lang/Object;
.source "HomepagePreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/HomepagePreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/HomepagePreferences;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/HomepagePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepagePreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/HomepagePreferences;

    # getter for: Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->mHomepageManager:Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/HomepagePreferences;->access$000(Lorg/chromium/chrome/browser/preferences/HomepagePreferences;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->setPrefHomepageEnabled(Z)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
