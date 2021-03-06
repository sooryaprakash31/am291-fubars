# Generated by Django 3.0.8 on 2020-08-01 15:04

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Report',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student_count', models.PositiveIntegerField()),
                ('for_date', models.DateField(verbose_name='date reported for')),
                ('on_datetime', models.DateTimeField(auto_now_add=True, verbose_name='date and time reported on')),
                ('actual_report', models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='estimate_report', to='api.Report')),
                ('school', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.School')),
            ],
            options={
                'unique_together': {('school', 'for_date', 'actual_report')},
            },
        ),
        migrations.CreateModel(
            name='ReportItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('item', models.CharField(max_length=200)),
                ('report', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='items', to='api.Report')),
            ],
            options={
                'unique_together': {('report', 'item')},
            },
        ),
    ]
