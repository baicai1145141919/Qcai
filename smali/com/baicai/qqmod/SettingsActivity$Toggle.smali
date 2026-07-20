.class public Lcom/baicai/qqmod/SettingsActivity$Toggle;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baicai/qqmod/SettingsActivity$Toggle;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/baicai/qqmod/SettingsActivity$Toggle;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/baicai/qqmod/SettingsActivity$Toggle;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baicai/qqmod/SettingsActivity$Toggle;->key:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/baicai/qqmod/Config;->setEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/baicai/qqmod/Config;->setVoiceForwardEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/baicai/qqmod/SettingsActivity$Toggle;->ctx:Landroid/content/Context;

    const-string v1, "\u5df2\u4fdd\u5b58\uff0c\u7acb\u5373\u751f\u6548"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
