.class public final Landroid/support/v4/app/W;
.super Landroid/support/v4/app/an;
.source "NotificationCompat.java"


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:[Landroid/support/v4/app/aD;

.field private c:I

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2171
    new-instance v0, Landroid/support/v4/app/ao;

    invoke-direct {v0}, Landroid/support/v4/app/ao;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 1827
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/W;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/aD;)V

    .line 1828
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/aD;)V
    .locals 1

    .prologue
    .line 1831
    invoke-direct {p0}, Landroid/support/v4/app/an;-><init>()V

    .line 1832
    iput p1, p0, Landroid/support/v4/app/W;->c:I

    .line 1833
    invoke-static {p2}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/W;->d:Ljava/lang/CharSequence;

    .line 1834
    iput-object p3, p0, Landroid/support/v4/app/W;->e:Landroid/app/PendingIntent;

    .line 1835
    iput-object p4, p0, Landroid/support/v4/app/W;->a:Landroid/os/Bundle;

    .line 1836
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/W;->b:[Landroid/support/v4/app/aD;

    .line 1837
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1841
    iget v0, p0, Landroid/support/v4/app/W;->c:I

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Landroid/support/v4/app/W;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Landroid/support/v4/app/W;->e:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Landroid/support/v4/app/W;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public final bridge synthetic e()[Landroid/support/v4/app/aH;
    .locals 1

    .prologue
    .line 1808
    .line 2868
    iget-object v0, p0, Landroid/support/v4/app/W;->b:[Landroid/support/v4/app/aD;

    .line 1808
    return-object v0
.end method
