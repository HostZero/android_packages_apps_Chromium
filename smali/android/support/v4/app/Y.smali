.class public final Landroid/support/v4/app/Y;
.super Landroid/support/v4/app/ak;
.source "NotificationCompat.java"


# instance fields
.field a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1703
    invoke-direct {p0}, Landroid/support/v4/app/ak;-><init>()V

    .line 1704
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Z;)V
    .locals 0

    .prologue
    .line 1706
    invoke-direct {p0}, Landroid/support/v4/app/ak;-><init>()V

    .line 1707
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Y;->a(Landroid/support/v4/app/Z;)V

    .line 1708
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;
    .locals 1

    .prologue
    .line 1733
    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Y;->a:Ljava/lang/CharSequence;

    .line 1734
    return-object p0
.end method
