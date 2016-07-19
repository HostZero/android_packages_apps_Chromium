.class public Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;
.super Ljava/lang/Object;
.source "InvalidationPreferences.java"


# instance fields
.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lorg/chromium/sync/notifier/InvalidationPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/sync/notifier/InvalidationPreferences;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->this$0:Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    # getter for: Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences;->access$000(Lorg/chromium/sync/notifier/InvalidationPreferences;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method
