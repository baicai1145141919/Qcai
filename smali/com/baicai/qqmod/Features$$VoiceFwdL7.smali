.class public final synthetic Lcom/baicai/qqmod/Features$$VoiceFwdL7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/ClassLoader;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baicai/qqmod/Features$$VoiceFwdL7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/baicai/qqmod/Features$$VoiceFwdL7;->f$1:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lcom/baicai/qqmod/Features$$VoiceFwdL7;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/baicai/qqmod/Features$$VoiceFwdL7;->f$3:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/baicai/qqmod/Features$$VoiceFwdL7;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/baicai/qqmod/Features$$VoiceFwdL7;->f$1:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lcom/baicai/qqmod/Features$$VoiceFwdL7;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/baicai/qqmod/Features$$VoiceFwdL7;->f$3:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/baicai/qqmod/Features;->lambda$showVoiceForwardDialog$4(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
